cask "julia-app" do
  arch arm: "aarch64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "07ed044eff0afd4031c6cfe7330d82b5101f617ccec57ad7118c953de99f0489",
         intel: "ddf492f8aeb6d7f20de0720037209ced62914a57cb7f6b1dc6dff1745c257301"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang-s3.julialang.org/bin/versions.json"
    strategy :json do |json|
      json.map do |version, release|
        next unless release["stable"]
        next unless release["files"].any? { |file| file["os"] == "mac" && file["arch"] == livecheck_arch }

        version
      end
    end
  end

  depends_on macos: :tahoe

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"
  manpage "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/share/man/man1/julia.1"

  zap trash: [
    "~/.julia",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.julia.sfl*",
    "~/Library/Logs/Julia",
    "~/Library/Preferences/com.github.Julia.plist",
    "~/Library/Preferences/julia.plist",
    "~/Library/Saved Application State/com.github.Julia.savedState",
  ]
end
