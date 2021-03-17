cask "eaglefiler" do
  version "1.9.3"
  sha256 "5c265098119bfb7c03ca5c62c3b9e16a8019c126eaf8b7948f64546bf3e3bf66"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name "EagleFiler"
  desc "Organize files, archive e-mails, save Web pages and notes, search everything"
  homepage "https://c-command.com/eaglefiler/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/EagleFiler-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "EagleFiler.app"
end
