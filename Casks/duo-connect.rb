cask "duo-connect" do
  version "1.1.1"
  sha256 "ba54b65d5a4f8c0a79702f6d370e76fb14cb50148bc3f83b8ff29a4ac9997e78"

  # dl.duosecurity.com/ was verified as official when first introduced to the cask
  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg"
  appcast "https://duo.com/docs/checksums#duoconnect-for-macos"
  name "DuoConnect"
  homepage "https://guide.duo.com/duoconnect"

  depends_on macos: ">= :yosemite"

  pkg "DuoConnect-#{version}.pkg"

  uninstall pkgutil: "com.duo.connect.bin"
end
