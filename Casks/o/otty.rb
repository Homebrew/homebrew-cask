cask "otty" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.5.4"
  sha256 arm:   "3b3e39f4dca38820032baa98c6731f6409502f9975d330bc583129bd04a0d291",
         intel: "3d48c6fa1138d9f71b9ea54db142dc2c6d4e0e7376bd8f980277ee8f8b179e13"

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
