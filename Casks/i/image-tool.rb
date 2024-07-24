cask "image-tool" do
  version "1.4.1"
  sha256 "66ef0c6cdf2e90981bc8bd0d1131e6e0f141744406997712550b8b5a05022d39"

  url "https://archive.org/download/jimmcgowan-2000s-software/ImageTool#{version}.dmg"
  name "Image Tool"
  desc "Scale images and convert image file formats"
  homepage "https://archive.org/details/jimmcgowan-2000s-software"

  disable! date: "2024-07-14", because: "is 32-bit only"

  depends_on macos: "<= :mojave"

  app "Image Tool.app"
end
