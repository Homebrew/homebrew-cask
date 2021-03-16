cask "google-cloud-sdk" do
  version "332.0.0"
  sha256 "1d158a84dfff8f3aa3cacdbbd3fb9cfbea3178728367b20c986760edc1665026"

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-#{version}-darwin-x86_64.tar.gz"
  name "Google Cloud SDK"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/sdk/"

  auto_updates true
  depends_on formula: "python"

  artifact "google-cloud-sdk", target: "#{HOMEBREW_PREFIX}/share/google-cloud-sdk"

  postflight do
    system_command "#{staged_path}/google-cloud-sdk/install.sh",
                   args: [
                     "--usage-reporting", "false", "--bash-completion", "false", "--path-update", "false",
                     "--rc-path", "false", "--quiet"
                   ] + (
                     if ENV.key?("HOMEBREW_GOOGLE_CLOUD_SDK_ADDITIONAL_COMPONENTS")
                       ["--additional-components"] + ENV["HOMEBREW_GOOGLE_CLOUD_SDK_ADDITIONAL_COMPONENTS"].split(",")
                     else
                       []
                     end
                   ),
                   env:  { "CLOUDSDK_PYTHON" => Formula["python"].opt_bin/"python3" }
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
  uninstall delete: "#{staged_path}/google-cloud-sdk"

  # https://cloud.google.com/sdk/docs/uninstall-cloud-sdk
  zap trash: [
    "~/.config/gcloud",
    "~/Library/Caches/**/google-cloud-sdk",
  ]

  caveats <<~EOS
    #{token} is installed at #{HOMEBREW_PREFIX}/share/#{token}. Add your profile:

      for bash users
        source "#{HOMEBREW_PREFIX}/share/#{token}/path.bash.inc"
        source "#{HOMEBREW_PREFIX}/share/#{token}/completion.bash.inc"

      for zsh users
        source "#{HOMEBREW_PREFIX}/share/#{token}/path.zsh.inc"
        source "#{HOMEBREW_PREFIX}/share/#{token}/completion.zsh.inc"

      for fish users
        source "#{HOMEBREW_PREFIX}/share/#{token}/path.fish.inc"

    To keep additional components after an upgrade or reinstallation add to your profile:
      export HOMEBREW_GOOGLE_CLOUD_SDK_ADDITIONAL_COMPONENTS='COMPONENT_ID,COMPONENT_ID'
  EOS
end
