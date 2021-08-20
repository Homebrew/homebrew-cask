cask "nozbe" do
  version "3.19.0"
  sha256 "b9990ea79be52f77217ad8b137893f96898ba0605ebd756df31b5f0be34b2ff6"

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  depends_on macos: ">= :sierra"

  app "Nozbe.app"
end
