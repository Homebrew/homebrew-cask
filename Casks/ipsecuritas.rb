cask "ipsecuritas" do
  if MacOS.version <= :sierra
    version "4.7"
    sha256 "42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba"

    url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "4.9.1"
    sha256 "4e23830ab3a8b15f25bfe602c6f1b29c9766ae680afcaf0831047216b05836df"

    url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  else
    version "5.0"
    sha256 "874f25ba7e5819ddc738a198584c3120ede20157afb13b9e728c8d6e0b1d75d4"

    url "https://www.lobotomo.com/download/ipsecuritas-#{version}.dmg"
  end

  name "IPSecuritas"
  desc "IPSec client"
  homepage "https://www.lobotomo.com/products/IPSecuritas/"

  livecheck do
    url "https://www.lobotomo.com/products/IPSecuritas/"
    strategy :page_match
    regex(%r{href=.*?/ipSecuritas-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "IPSecuritas.app"
end
