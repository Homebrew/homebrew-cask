cask "julia" do
  arch, arch_folder = Hardware::CPU.intel? ? ["mac64", "x64"] : ["macaarch64", "aarch64"]

  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "95842f2782d6cef397cfbde250f627def8c86cc281efce0d64a14c13bd62d494"
  else
    sha256 "b6489d1e00cd539dfd60b29743b5d813889368bdc1a8fb9418893db5ae2d43d6"
  end

  url "https://julialang-s3.julialang.org/bin/mac/#{arch_folder}/#{version.major_minor}/julia-#{version}-#{arch}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: [
    "~/.julia",
    "~/Library/Preferences/julia.plist",
  ]
end
