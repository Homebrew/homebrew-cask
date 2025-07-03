cask "jyutping" do
  version "0.58.0"
  sha256 "63a13a98f075e628c9df3fc2ee9eff1f03ee8f36b2b952a919e8ea9ffe257618"

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
  depends_on macos: ">= :monterey"

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
