cask "julia" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "06f2d3de4e514f519153b154f867efbc53f21ddfc897a3ebbaabb3f95b549aa5",
         intel: "8e1fc578a153f8414f146de8f22acbecfd92d820813c34aa0c1f27e363629e15"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]mac#{arch.delete_prefix("x")}\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: [
    "~/.julia",
    "~/Library/Preferences/julia.plist",
  ]
end
