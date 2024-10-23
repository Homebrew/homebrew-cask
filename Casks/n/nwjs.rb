cask "nwjs" do
  arch arm: "arm64", intel: "x64"

  version "0.93.0"
  sha256 arm:   "9b29f89dcaf844f5e4ca4172fc495f15775875b97994139675f4a39daffcaa46",
         intel: "5b49c76f65f660343f149530ef447a90ec44641edaf567827048fe1895191121"

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

  app "nwjs-sdk-v#{version}-osx-#{arch}/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-#{arch}/nwjc"

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
