cask "fluor" do
  if MacOS.version < :big_sur
    version "2.5.0"
    sha256 "bd7cc7ce2c2f9ac839c8d39bd600c2863c924c938c1c9e2d865bb7124ee84209"
  else
    version "2.5.1"
    sha256 "adcb2651ab81bc10e4682ef264724b27137444f10f1bbb867e7d0bd7b6063d46"
  end

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  name "Fluor"
  desc "Change the behavior of the fn keys depending on the active application"
  homepage "https://github.com/Pyroh/Fluor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Fluor.app"

  uninstall quit: "com.pyrolyse.Fluor"

  zap trash: "~/Library/Preferences/com.pyrolyse.Fluor.plist"
end
