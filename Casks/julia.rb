cask "julia" do
  arch arm: "aarch64", intel: "x64"
  midfix = on_arch_conditional arm: arch

  version "1.8.0"

  on_intel do
    sha256 "29880bb57614c9c597edf5384a351b3f0299fa097b9eb62cd640c93cde58677b"
  end
  on_arm do
    sha256 "8e113a42fe4eac7b75023136674452f6f09590717755417cd137258707e96540"
  end

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{midfix}64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]mac#{midfix}64\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: [
    "~/.julia",
    "~/Library/Preferences/julia.plist",
  ]
end
