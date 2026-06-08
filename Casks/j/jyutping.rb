cask "jyutping" do
  version "0.77.0"
  sha256 "5a2dcb0214ccbe0679cb8ff6323c61b0783f58ae774fe91d342da5e69e4765bd"

  url "https://github.com/yuetyam/jyutping/releases/download/#{version}/Jyutping-v#{version}-Mac.pkg",
      verified: "github.com/yuetyam/jyutping/"
  name "Jyutping"
  desc "Cantonese Jyutping Input Method"
  homepage "https://jyutping.app/"

  livecheck do
    url "https://jyutping.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "Jyutping-v#{version}-Mac.pkg"

  uninstall quit:    "org.jyutping.inputmethod.Jyutping",
            pkgutil: "org.jyutping.inputmethod.Jyutping",
            delete:  "/Library/Input Methods/Jyutping.app"

  zap trash: [
    "~/Library/Application Scripts/org.jyutping.inputmethod.Jyutping",
    "~/Library/Caches/org.jyutping.inputmethod.Jyutping",
    "~/Library/Containers/org.jyutping.inputmethod.Jyutping",
  ]
end
