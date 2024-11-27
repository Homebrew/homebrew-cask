cask "julia@lts" do
  version "1.10.7"
  sha256 "fdf0dedfab45571ef41e9ad5003b41804bd1f8ade82b149f99693170db17261f"

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
