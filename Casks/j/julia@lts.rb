cask "julia@lts" do
  version "1.10.8"
  sha256 "f5ebc3865d4272bc9f2cf3d911d47b3ba3b66999c10c079fd1442e743dcc9a7f"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/\(LTS\)\s+release:\s+v?(\d+(?:\.\d+)+)/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-lts"

  zap trash: "~/.julia"
end
