cask "dashdrop" do
  arch arm: "arm64", intel: "x64"
  version "0.0.1"
  sha256 arm: "ab2227614614f8f5efcd22c513ba411d66cd015ba66326b1e7dd7588f3edabec",
         intel: "ab2227614614f8f5efcd22c513ba411d66cd015ba66326b1e7dd7588f3edabec"

  url "https://dashdrop.s3.ap-south-1.amazonaws.com/dashdrop-#{version}.dmg",
  verified: "dashdrop.s3.ap-south-1.amazonaws.com"
  name "Dashdrop"
  desc "File transsfer app"
  homepage "https://dashdrop.s3.ap-south-1.amazonaws.com/index.html"

  livecheck do
    url "https://dashdrop.s3.ap-south-1.amazonaws.com/updates.xml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "dashdrop.app"

  zap trash: [
    "~/Library/Application Support/Dashdrop",
    "~/Library/Caches/com.zedbyte.dashdrop",
    "~/Library/Cookies/com.zedbyte.dashdrop.binarycookies",
    "~/Library/Preferences/com.zedbyte.dashdrop.plist",
  ]
end
