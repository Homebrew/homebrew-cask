cask "perforce" do
  version "20.1,1991450"
  sha256 "e93b556b4824afa3b9c1b7e328a53c605c8953cc9facd6c12d7a3b3451434ea6"

  url "https://cdist2.perforce.com/perforce/r#{version.before_comma}/bin.macosx1010x86_64/helix-core-server.tgz"
  name "Perforce Helix Versioning Engine"
  homepage "https://www.perforce.com/"

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
