cask "manycam" do
  version "7.5.0.7"
  sha256 "67a5b485ab128e82717b62c8e0ec5898096979d1042567439ea3b4a6cfd10314"

  url "https://download3.manycams.com/ManyCam.dmg"
  appcast "https://manycam.com/mac_changes/"
  name "ManyCam"
  desc "Live Video Made Better"
  homepage "https://manycamp.com/"

  depends_on macos: ">= :el_capitan"

  pkg "ManyCam-#{version}.pkg"
end
