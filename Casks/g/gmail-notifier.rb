cask "gmail-notifier" do
  version "2.1.0"
  sha256 "562cad2fd5ea034ff778b4bc37d028b34d535888eac96674e9084afdc3f20092"

  url "https://github.com/jashephe/Gmail-Notifier/releases/download/v#{version}/Gmail.Notifier.v#{version}.zip"
  name "Gmail Notifier"
  desc "Minimalist Gmail inbox notifications app"
  homepage "https://github.com/jashephe/Gmail-Notifier"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Gmail Notifier.app"
end
