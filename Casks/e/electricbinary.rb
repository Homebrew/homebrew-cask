cask "electricbinary" do
  version "9.08"
  sha256 "7a8fbe5fac60989659a5197eabb4a1dac53a675adfa12c26c98a7d1089aeeb97"

  url "https://ftp.gnu.org/gnu/electric/electricBinary-#{version}.jar"
  name "Electric VLSI Design System"
  desc "Electrical CAD system for the design of integrated circuits"
  homepage "https://www.gnu.org/software/electric/electric.html"

  livecheck do
    url :url
    regex(/href=.*?electricBinary[._-]v?(\d+(?:\.\d+)+)\.jar/i)
  end

  container type: :naked

  artifact "electricBinary-#{version}.jar", target: "#{appdir}/electricBinary-#{version}.jar"

  zap trash: [
    "~/electric.log",
    "~/Library/Preferences/com.sun.electric.plist",
  ]

  caveats do
    depends_on_java "8"
  end
end
