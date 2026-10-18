cask "otty" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.6.1"
  sha256 arm:   "fd5d006c228caefbb782c4505a179ccc9608927e7dbc90be892a2457135f2328",
         intel: "b04d07a01b0ac4e1441079eddc5fc6016472ff869edacac3f1c5a96fbc23d456"

  url "https://downloads.otty.sh/macos/Otty-#{version}-#{arch}.zip"
  name "Otty"
  desc "Terminal emulator built for code agents"
  homepage "https://otty.sh/"

  livecheck do
    url "https://otty.sh/releases/macos-#{livecheck_arch}.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "Otty.app"
  binary "#{appdir}/Otty.app/Contents/MacOS/otty-cli", target: "otty"
  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/otty", "completions"

  zap trash: [
    "~/.config/otty",
    "~/Library/Application Support/io.appmakes.otty",
    "~/Library/Caches/io.appmakes.otty",
    "~/Library/Caches/otty",
    "~/Library/HTTPStorages/io.appmakes.otty",
    "~/Library/Preferences/io.appmakes.otty.plist",
    "~/Library/WebKit/io.appmakes.otty",
  ]
end
