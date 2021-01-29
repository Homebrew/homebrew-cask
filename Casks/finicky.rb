cask "finicky" do
  version "3.1.3"
  sha256 "f2a83a5aaddf09468b243b700561f4ab611bc377a186ab6cdcca056d31d9dd0d"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Finicky.app"
end
