cask "duo-connect" do
  version "1.1.1"
  sha256 "ba54b65d5a4f8c0a79702f6d370e76fb14cb50148bc3f83b8ff29a4ac9997e78"

  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg",
      verified: "dl.duosecurity.com/"
  name "DuoConnect"
  desc "Access your organization’s SSH servers"
  homepage "https://guide.duo.com/duoconnect"

  livecheck do
    url "https://duo.com/docs/checksums#duoconnect-for-macos"
    regex(%r{href=.*?/DuoConnect[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :yosemite"

  pkg "DuoConnect-#{version}.pkg"

  uninstall pkgutil: "com.duo.connect.bin"
end
