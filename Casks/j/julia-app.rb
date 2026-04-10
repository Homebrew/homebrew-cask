cask "julia-app" do
  arch arm: "aarch64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.12.6"
  sha256 arm:   "d065db4f16d4a18b4f1ab682d0ff4299addd13b999e980100fd72db592b99242",
         intel: "2f636f851fbfdb4d3e9b8d71f5ffe1aea6e03697d5741a9c7f47ac775591e1e1"

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

  depends_on macos: ">= :sequoia"

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
