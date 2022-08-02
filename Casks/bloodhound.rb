cask "bloodhound" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.1"

  if Hardware::CPU.intel?
    sha256 "2c45a08d77284fedd8074a5664e7c2424a94c6d131540010da2e73d8f520ebe7"
  else
    sha256 "45d8e1aafeb7361581def6751c201b11cd2a9761f1c19d17925f72fda78328bc"
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
