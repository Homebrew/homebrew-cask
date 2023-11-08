cask "perforce" do
  version "2023.1,2513900"
  sha256 "fcbf09787ffc29f7237839711447bf19a37ae18a8a7e19b2d30deb3715ae2c11"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/helix-core-server.tgz"
  name "Perforce Helix Core Server"
  name "Perforce Helix Command-Line Client (P4)"
  name "Perforce Helix Broker (P4Broker)"
  name "Perforce Helix Versioning Engine (P4D)"
  name "Perforce Helix Proxy (P4P)"
  desc "Version control"
  homepage "https://www.perforce.com/"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
