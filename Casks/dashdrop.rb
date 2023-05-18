# typed: true
# frozen_string_literal: true

cask "dashdrop" do
  version "0.0.1"
  sha256 "287913a26dccf7656b6e07ebf4373ac2adb4b0a4bd45eaa60e8fa357e4089455"

  url "https://dashdrop.s3.ap-south-1.amazonaws.com/dashdrop-#{version}.dmg"
  name "Dashdrop"
  desc "File transsfer app"
  homepage "https://dashdrop.s3.ap-south-1.amazonaws.com/index.html"

  livecheck do
    url "https://dashdrop.s3.ap-south-1.amazonaws.com/updates.xml"
    strategy :sparkle
  end

  app "Dashdrop/dashdrop.app"

  zap trash: [
    "~/Library/Application Support/Dashdrop",
    "~/Library/Caches/com.zedbyte.dashdrop",
    "~/Library/Cookies/com.zedbyte.dashdrop.binarycookies",
    "~/Library/Preferences/com.zedbyte.dashdrop.plist",
  ]
end
