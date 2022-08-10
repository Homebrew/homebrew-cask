cask "bloodhound" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"

  if Hardware::CPU.intel?
    sha256 "121b6cc756d066cd5581f54215db3faf5edb5ff02697421cd38b6f93d6d5d65b"
  else
    sha256 "74fd341390aaee0b7dac4f892df392eadb934932bf7e6d6047ffcc8532df1f3d"
  end

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
