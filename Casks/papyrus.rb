cask "papyrus" do
  version "4.8.0,2020-06"
  sha256 "4b653cc5689a896bb94a4fa767584838318672123dde864853f1316ef7e3a132"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  appcast "https://mirrors.dotsrc.org/eclipse//modeling/mdt/papyrus/rcp/",
          must_contain: version.after_comma
  name "Papyrus"
  homepage "https://eclipse.org/papyrus/"

  app "Papyrus.app"

  caveats do
    depends_on_java "8+"
  end
end
