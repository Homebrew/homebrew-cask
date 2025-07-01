cask "julia-app@lts" do
  version "1.10.10"
  sha256 "c315ed82ff6bb0d8817616a2e0393827ba67f24f4b5f44af429d2cf48b69550f"

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
