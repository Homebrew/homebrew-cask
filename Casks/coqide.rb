cask "coqide" do
  version "8.12.2"
  sha256 "6cc8417d5b90d823752e142561da677ceac94ab5cbfc5e14acad363c7aab46fc"

  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg",
      verified: "github.com/coq/coq/"
  name "Coq"
  homepage "https://coq.inria.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
