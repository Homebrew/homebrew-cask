cask "dockey" do
  version :latest
  sha256 :no_check

  url "https://dockey.publicspace.co/download/Dockey-latest.zip"
  name "dockey"
  homepage "https://dockey.publicspace.co/"

  depends_on macos: ">= :high_sierra"

  app "dockey.app"

  uninstall quit: "com.igorstumberger.dockey"
end
