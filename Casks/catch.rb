cask "catch" do
  version "1.9.4"
  sha256 "a57c48fabe764c3bfe06747f669912b7e9787fa830e30b6d31640d44540c2414"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  homepage "https://www.giorgiocalderolla.com/index.html#catch"

  app "Catch.app"
end
