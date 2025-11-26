cask "nwjs" do
  arch arm: "arm64", intel: "x64"

  version "0.106.0"
  sha256 arm:   "ff07f2a40ae7a7588bd72a79a1b6392f4c09ab8b17aed7fbb127b509767f685f",
         intel: "6536e322ceef0c08252587544609620b3b2a8476c3c254cde7745e2adf2fd31a"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-#{arch}.zip"
  name "NW.js"
  desc "Call all Node.js modules directly from the DOM and Web Workers"
  homepage "https://nwjs.io/"

  # The upstream download page appends a UNIX epoch timestamp (in milliseconds)
  # to the JSON URL, so we do the same (in case it affects the returned data).
  livecheck do
    url "https://nwjs.io/versions.json?#{DateTime.now.strftime("%Q")}"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["stable"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "nwjs-sdk-v#{version}-osx-#{arch}/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-#{arch}/nwjc"

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
