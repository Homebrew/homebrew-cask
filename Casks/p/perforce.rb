cask "perforce" do
  arch arm: "12arm64", intel: "1015x86_64"

  version "2026.1,3141402"
  sha256 arm:   "1c40dd89db8bb063ef1e51c522bf443ae73b96483a39f543f3e6d447f73f8a2d",
         intel: "8aa1b4f4d9fb88a611f53121677b5297e2996aab1e78c6e38bcdec2b238a3d59"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx#{arch}/helix-core-server.tgz"
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

  conflicts_with cask: "p4"
  depends_on :macos

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  zap :not_required

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
