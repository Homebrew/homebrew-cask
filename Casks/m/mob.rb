cask "mob" do
  version "0.2.2"
  sha256 "a70d66d92310737d9599215d558670a45265795be0be980934a91e9880eb4a73"

  url "https://github.com/zenghongtu/Mob/releases/download/v#{version}/Mob-#{version}-mac.dmg"
  name "Mob"
  homepage "https://github.com/zenghongtu/Mob"

  disable! date: "2024-12-16", because: :discontinued

  app "Mob.app"

  zap trash: "~/Library/Application Support/mob"
end
