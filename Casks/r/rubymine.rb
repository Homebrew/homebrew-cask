cask "rubymine" do
  arch arm: "-aarch64"

  version "2025.2.5,252.28238.3"
  sha256 arm:   "8527cb286ea5d9cd612538cb55354dc689b7f7fe5ec0b81a8f1a4a2279e94351",
         intel: "7dedc215b849194f8814380a4e622e117346fb52fc3f102bfa53332d33c9433b"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.csv.first}#{arch}.dmg"
  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :json do |json|
      json["RM"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "RubyMine.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/rubymine.wrapper.sh"
  binary shimscript, target: "rubymine"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/RubyMine.app/Contents/MacOS/rubymine' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end
