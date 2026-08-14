cask "nwjs" do
  arch arm: "arm64", intel: "x64"

  version "0.114.2"
  sha256 arm:   "ce67c989650cf7e98d0f910936560afc54447c89676f08278a06b83df2cef1e0",
         intel: "679a4b54b6bd28f734d459e4dd1370d0c95db1f09cfba3e9ac14cd79e57f92d4"

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

  depends_on macos: :ventura

  app "nwjs-sdk-v#{version}-osx-#{arch}/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-#{arch}/nwjc"

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
