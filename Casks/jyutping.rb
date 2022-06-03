cask "jyutping" do
  version "0.18.0"
  sha256 "37285469ff5ae629c22dfa7dddbff70e4fee5ddf46636b07f082e02b4db21f4f"

  url "https://github.com/yuetyam/jyutping/releases/download/#{version}/Jyutping-IME-Mac-v#{version}.zip",
      verified: "github.com/yuetyam/jyutping/"
  name "Jyutping"
  desc "Cantonese Jyutping Input Method"
  homepage "https://jyutping.org/"

  depends_on macos: ">= :monterey"

  pkg "Jyutping.pkg"

  uninstall pkgutil: "org.jyutping.inputmethod.Jyutping",
            delete:  "~/Library/Input Methods/Jyutping.app"

  zap trash: [
    "~/Library/Application Scripts/org.jyutping.inputmethod.Jyutping",
    "~/Library/Containers/org.jyutping.inputmethod.Jyutping",
    "~/Library/Preferences/org.jyutping.inputmethod.Jyutping.plist",
  ]
end
