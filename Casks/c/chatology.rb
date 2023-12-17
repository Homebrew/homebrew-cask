cask "chatology" do
  version "1.2.5"
  sha256 "c47e8af749553e2c3b02b390b1d4d30fc2dec32cd7e01f85bc1699b770039a8a"

  url "https://cdn.flexibits.com/Chatology_#{version}.zip"
  name "Chatology"
  desc "Chat manager and message search software"
  homepage "https://flexibits.com/chatology"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :el_capitan"

  app "Chatology.app"
end
