cask "jyutping" do
  version "0.38.0"
  sha256 "dad395c298182f8c81e063b1d9f5af52fcae3c1427d42493ef78c5e12819280e"

  url "https://github.com/yuetyam/jyutping/releases/download/#{version}/Jyutping-v#{version}-Mac-IME.pkg.zip",
      verified: "github.com/yuetyam/jyutping/"
  name "Jyutping"
  desc "Cantonese Jyutping Input Method"
  homepage "https://jyutping.app/"

  livecheck do
    url "https://jyutping.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "Jyutping-v#{version}-Mac-IME.pkg"

  uninstall quit:    "org.jyutping.inputmethod.Jyutping",
            pkgutil: "org.jyutping.inputmethod.Jyutping",
            delete:  "/Library/Input Methods/Jyutping.app"

  zap trash: [
    "~/Library/Application Scripts/org.jyutping.inputmethod.Jyutping",
    "~/Library/Caches/org.jyutping.inputmethod.Jyutping",
    "~/Library/Containers/org.jyutping.inputmethod.Jyutping",
  ]
end
