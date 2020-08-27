cask "finicky" do
  version "3.1.0"
  sha256 "ecdf19e5ffc1832695e3c84c687316dffa3044d95b65204c131b0215407193ce"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast "https://github.com/johnste/finicky/releases.atom"
  name "Finicky"
  homepage "https://github.com/johnste/finicky"

  depends_on macos: ">= :sierra"

  app "Finicky.app"
end
