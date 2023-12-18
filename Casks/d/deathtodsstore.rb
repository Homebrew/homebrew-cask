cask "deathtodsstore" do
  version "1.0.5"
  sha256 :no_check

  url "https://www.aorensoftware.com/Downloads/Files/DeathToDSStore.zip"
  name "DeathToDSStore"
  homepage "https://www.aorensoftware.com/blog/2011/12/24/death-to-ds_store/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "DeathToDSStore.app"
end
