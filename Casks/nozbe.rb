cask "nozbe" do
  version "3.20.1"
  sha256 "1cf4461e172b66b486c24e1dbc6177559e921bf10e100b74262a165e44cee876"

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  depends_on macos: ">= :sierra"

  app "Nozbe.app"
end
