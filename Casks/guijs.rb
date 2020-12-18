cask "guijs" do
  version "0.1.19"
  sha256 "857bed89fe461edeca980a5bb17ec53016dd64ffc0b4e49a76b729f5fa7b594a"

  url "https://github.com/Akryum/guijs/releases/download/v#{version}/guijs.app.tgz",
      verified: "github.com/Akryum/guijs/"
  appcast "https://github.com/Akryum/guijs/releases.atom"
  name "guijs"
  desc "Graphical interface to manage JS projects"
  homepage "https://guijs.dev/"

  app "guijs.app"

  zap trash: [
    "~/Library/Caches/guijs",
    "~/Library/WebKit/guijs",
  ]
end
