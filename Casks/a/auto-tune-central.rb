cask "auto-tune-central" do
  version "2.0.2"
  sha256 "c2c6096172832c96b71d240240ce85855ee7a6ed3e20a643ce439b2158e6ceba"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version}_universal_x7555.dmg"
  name "Auto-Tune Central"
  desc "Software download manager for Antares products"
  homepage "https://www.antarestech.com/"

  livecheck do
    url "https://www.antarestech.com/software-download"
    regex(/Auto_Tune_Central[._-]v?(\d+(?:\.\d+)+)[._-]universal/i)
  end

  app "Auto-Tune Central.app"
end
