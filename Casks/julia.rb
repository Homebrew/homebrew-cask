cask "julia" do
  arch, arch_folder = Hardware::CPU.intel? ? ["mac64", "x64"] : ["macaarch64", "aarch64"]

  version "1.7.2"

  if Hardware::CPU.intel?
    sha256 "ae9d2970ed8987b9c48f166b15f02dbdae017f48e106522540add9030f106f0e"
  else
    sha256 "420d8e3839c3e39407f5365ceb3bfb84899a440915ec896390568015b3ffa4b9"
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
