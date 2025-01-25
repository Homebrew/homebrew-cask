cask "nwjs" do
  arch arm: "arm64", intel: "x64"

  version "0.95.0"
  sha256 arm:   "0f743e9e548f34b9cc90fc0a630cffbe822fad16460b231f7d4b372376d0328c",
         intel: "5da77cf4a2650f952e5ad26ec5b94d583e13442b101a749f6e7c5805cad130df"

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

  depends_on macos: ">= :big_sur"

  app "nwjs-sdk-v#{version}-osx-#{arch}/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-#{arch}/nwjc"

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
