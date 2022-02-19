cask "fluor" do
  version "2.5.0"
  sha256 "bd7cc7ce2c2f9ac839c8d39bd600c2863c924c938c1c9e2d865bb7124ee84209"

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  name "Fluor"
  desc "Change the behavior of the fn keys depending on the active application"
  homepage "https://github.com/Pyroh/Fluor"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Fluor.app"

  uninstall quit: "com.pyrolyse.Fluor"

  zap trash: "~/Library/Preferences/com.pyrolyse.Fluor.plist"
end
