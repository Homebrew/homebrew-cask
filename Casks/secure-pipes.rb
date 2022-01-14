cask "secure-pipes" do
  version "0.99.11,c67223c50be3604"
  sha256 "de8b6ad6c42509f2c394997694c13a161dcb4f74edfa87f5a63d7362897538f5"

  url "https://www.opoet.com/pyro/index.php/files/download/#{version.csv.second}"
  name "Secure Pipes"
  desc "Manage SSH tunnels"
  homepage "https://www.opoet.com/pyro/index.php/"

  app "Secure Pipes.app"
end
