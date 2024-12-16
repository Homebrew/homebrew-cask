cask "deathtodsstore" do
  version "1.0.5"
  sha256 :no_check

  url "https://www.aorensoftware.com/Downloads/Files/DeathToDSStore.zip"
  name "DeathToDSStore"
  homepage "https://www.aorensoftware.com/blog/2011/12/24/death-to-ds_store/"

  disable! date: "2024-12-16", because: :discontinued

  app "DeathToDSStore.app"
end
