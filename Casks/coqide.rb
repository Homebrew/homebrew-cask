cask "coqide" do
  version "8.13.1"
  sha256 "7e5a132a69b9e6234063dd4e2985c84952bb9a67b99d4e006f77bc3a95a7b586"

  url "https://github.com/coq/coq/releases/download/V#{version}/coq-#{version}-installer-macos.dmg",
      verified: "github.com/coq/coq/"
  name "Coq"
  desc "Formal proof management system"
  homepage "https://coq.inria.fr/"

  livecheck do
    url "https://github.com/coq/coq/releases"
    strategy :page_match
    regex(/href=.*?coq[._-]?v?(\d+(?:\.\d+)+)-installer-macos\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
