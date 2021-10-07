cask "drawj2d" do
  version "1.3.0"
  sha256 "a79c1224213e2591762a14b69bd91bf942e8b4b40a90d5640f7b5341847a57b9"

  url "https://downloads.sourceforge.net/drawj2d/Drawj2d-#{version}.zip"
  name "Drawj2d"
  desc "Creates technical line drawings using a descriptive language"
  homepage "http://drawj2d.sourceforge.net/"

  container type: :zip

  shimscript = "#{staged_path}/drawj2d.wrapper.sh"
  binary shimscript, target: "drawj2d"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        ./drawj2d/drawj2d "$@"
    EOS
    set_permissions "#{staged_path}/drawj2d/drawj2d", "0755"
  end

  caveats do
    depends_on_java "8+"
  end
end
