cask "otty" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.3.1"
  sha256 arm:   "68dcfe4391fe690484ec59932f654693d838892053bc633f33553dfcb31c88e3",
         intel: "c9b9d337f161c750296f06e009c1de10481658c43af6b76f7bca1750d6dc0602"

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
