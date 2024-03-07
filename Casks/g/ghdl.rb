cask "ghdl" do
  arch arm: "llvm", intel: "mcode"

  version "4.0.0"
  sha256 arm:   "55140a3fd5762f051d751db1aeb8f42d53100beb8ac6468e4b1b517b7c50ab02",
         intel: "d35d2e9bba77759721268ef032642ac9120d223e05675a3005bc933495089f21"

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-macos-11-#{arch}.tgz"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://github.com/ghdl/ghdl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/ghdl"
  binary "bin/ghwdump"

  postflight do
    puts "Creating library symlinks in #{HOMEBREW_PREFIX}/include and #{HOMEBREW_PREFIX}/lib"
    File.symlink("#{staged_path}/include/ghdl", "#{HOMEBREW_PREFIX}/include/ghdl")
    File.symlink("#{staged_path}/lib/ghdl", "#{HOMEBREW_PREFIX}/lib/ghdl")
  end

  uninstall_postflight do
    puts "Removing library symlinks in #{HOMEBREW_PREFIX}/include and #{HOMEBREW_PREFIX}/lib"
    File.unlink("#{HOMEBREW_PREFIX}/include/ghdl", "#{HOMEBREW_PREFIX}/lib/ghdl")
  end

  # No zap stanza required
end
