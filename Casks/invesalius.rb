cask "invesalius" do
  version "3.1.99995"
  sha256 "e9ee3a7548cee911355440fb87362a14080e4ec8372b85fdb6dd118cb294d173"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}.dmg",
      verified: "github.com/invesalius/invesalius3/"
  name "InVesalius"
  homepage "https://www.cti.gov.br/en/invesalius"

  app "InVesalius.app"
end
