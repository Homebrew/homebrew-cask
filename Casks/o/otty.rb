cask "otty" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.5.1"
  sha256 arm:   "bc818a4fd31fc98b8395a8ee9773531d8e26f82da1b1ee89237c51ab1c3b0b66",
         intel: "57635d845cfc38ff659043d43bb88d6d2e7f67adedf2f60e51b62d29d046613a"

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
