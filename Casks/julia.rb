cask "julia" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "ef489c069304e9d8edbcddb8cecdcd4c52f1f74e818607a95cb268913e05f94f",
         intel: "3274c3b3dbcb6d34e428797e143380b5c58db6688a5d44f0939f6319bcf3c18a"

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
