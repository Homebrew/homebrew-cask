cask "bloodhound" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "74fd341390aaee0b7dac4f892df392eadb934932bf7e6d6047ffcc8532df1f3d",
         intel: "121b6cc756d066cd5581f54215db3faf5edb5ff02697421cd38b6f93d6d5d65b"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-#{arch}.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-#{arch}/BloodHound.app"

  caveats <<~EOS
    According to https://github.com/BloodHoundAD/BloodHound/issues/504
    this app will not work with quarantine attributes.
  EOS
end
