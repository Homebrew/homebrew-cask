cask "dearsql" do
  version "0.4.1"
  sha256 "b8c5d6e31e38ad12ac83aa2bbba85e2d0b064ee14d768a2e8e01a3c6c180cb86"

  url "https://github.com/dunkbing/dearsql/releases/download/v#{version}/DearSQL-#{version}.dmg",
      verified: "github.com/dunkbing/dearsql/"
  name "DearSQL"
  desc "Native desktop SQL client for multiple databases"
  homepage "https://dearsql.dev/"

  app "DearSQL.app"
end
