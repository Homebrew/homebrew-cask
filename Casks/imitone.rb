cask "imitone" do
  version "0.10.2"
  sha256 "ecdcd7723ad0fd8971fcc0f6cfc27daca8ae17465a72e5f3f2a664036b28ee4e"

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  name "imitone"
  desc "Convert voice to midi in real time"
  homepage "https://imitone.com/"

  livecheck do
    url "https://imitone.com/beta/"
    strategy :page_match
    regex(/href=.*?imitone-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "imitone.app"
end
