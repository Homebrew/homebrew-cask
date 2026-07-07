cask "otty" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.2.3"
  sha256 arm:   "7d94053cf0aaf5ee8a5a1b2591659f87fddc27381e311b0a027183e77d8e6345",
         intel: "c7bbf448de4cdda000feccec581302bc7e899219a5ecadb004aac1ca4e889347"

  url "https://downloads.otty.sh/macos/Otty-#{version}-#{arch}.zip"
  name "Otty"
  desc "Terminal emulator built for code agents"
  homepage "https://otty.sh/"

  livecheck do
    url "https://docs.otty.sh/changelog"
    url "https://otty.sh/releases/macos-#{livecheck_arch}.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "Otty.app"
  binary "#{appdir}/Otty.app/Contents/MacOS/otty-cli", target: "otty"

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/otty", "completions",
                                       shells: [:bash, :zsh, :fish]

  zap trash: [
    "~/.config/otty",
    "~/Library/Application Support/io.appmakes.otty",
    "~/Library/Caches/io.appmakes.otty",
    "~/Library/HTTPStorages/io.appmakes.otty",
    "~/Library/Preferences/io.appmakes.otty.plist",
    "~/Library/WebKit/io.appmakes.otty",
  ]
end
